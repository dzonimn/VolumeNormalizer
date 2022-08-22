module VolumeNormalizer

using FFMPEG

export normalize

"""
    normalize(filepath)

Normalizes the volume of `filepath` and saves it as a new file prepended with the text "out-".
"""
function normalize(filepath)
    @info "Converting $filepath"
    loudnorm_cmd = "-i $filepath -af dynaudnorm=gausssize=3:maxgain=30 $("out-"*filepath) -y"
    FFMPEG.exe(string.(split(loudnorm_cmd))...)
    @info "Finished converting $filepath"
end

end # module VolumeNormalizer
