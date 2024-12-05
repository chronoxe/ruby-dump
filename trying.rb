def checkunlu(kelime)
    kalin = ['a', 'ı', 'o', 'u']
    ince = ['e', 'i', 'ö', 'ü']
    has_kalin = kalin.any? { |harf| kelime.include?(harf) }
    has_ince = ince.any? { |harf| kelime.include?(harf) }
    return true if has_ince!=has_kalin
    return false if has_ince==has_kalin
end