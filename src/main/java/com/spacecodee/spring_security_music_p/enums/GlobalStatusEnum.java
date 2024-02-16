package com.spacecodee.spring_security_music_p.enums;

public enum GlobalStatusEnum {
    ENABLED,
    DISABLED;

    public static GlobalStatusEnum fromString(String s) {
        for (GlobalStatusEnum status : GlobalStatusEnum.values()) {
            if (status.name().equalsIgnoreCase(s)) {
                return status;
            }
        }
        throw new IllegalArgumentException("No enum constant " + GlobalStatusEnum.class.getCanonicalName() + "." + s);
    }
}