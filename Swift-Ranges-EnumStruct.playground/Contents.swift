public enum NoteLetter: Int, Strideable {
    
    case C, D, E, F, G, A, B
    
    public func distance(to other: NoteLetter) -> NoteLetter.Stride {
        return Stride(other.rawValue) - Stride(self.rawValue)
    }
    
    public func advanced(by n: NoteLetter.Stride) -> NoteLetter {
        return NoteLetter(rawValue: numericCast(Stride(self.rawValue) + n))!
    }
    
    public typealias Stride = Int
}


public struct Interval : Strideable {
    var semitones : Int
    
    public static let unison = Interval(semitones: 0)
    public static let minorSecond = Interval(semitones: 1), majorSecond = Interval(semitones: 2)
    public static let minorThird = Interval(semitones: 3), majorThird = Interval(semitones: 4)
    public static let fourth = Interval(semitones: 5)
    public static let tritone = Interval(semitones: 6)
    public static let fifth = Interval(semitones: 7)
    public static let minorSixth = Interval(semitones: 8), majorSixth = Interval(semitones: 9)
    public static let minorSeventh = Interval(semitones: 10), majorSeventh = Interval(semitones: 11)
    public static let octave = Interval(semitones: 12)
    
    public func distance(to other: Interval) -> Interval.Stride {
        return Stride(other.semitones) - Stride(self.semitones)
    }
    
    public func advanced(by n: Interval.Stride) -> Interval {
        return Interval(semitones: numericCast(Stride(self.semitones) + n))
    }
    
    public typealias Stride = Int
    
}

NoteLetter.C..<NoteLetter.F
Interval.fifth..<Interval.octave
