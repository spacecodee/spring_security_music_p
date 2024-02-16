package com.spacecodee.spring_security_music_p.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.Arrays;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Getter
public enum RoleEnum {

    ADMINISTRATOR(Arrays.asList(
            RolePermissionEnum.READ_ALL_SONGS,
            RolePermissionEnum.READ_ONE_SONG,
            RolePermissionEnum.CREATE_ONE_SONG,
            RolePermissionEnum.UPDATE_ONE_SONG,
            RolePermissionEnum.DISABLE_ONE_SONG,

            RolePermissionEnum.READ_ALL_GENRES,
            RolePermissionEnum.READ_ONE_GENRE,
            RolePermissionEnum.CREATE_ONE_GENRE,
            RolePermissionEnum.UPDATE_ONE_GENRE,
            RolePermissionEnum.DISABLE_ONE_GENRE,

            RolePermissionEnum.DELETE_NO_ACTIVE_TOKENS,
            RolePermissionEnum.CREATE_ONE_USER_SYSTEM,

            RolePermissionEnum.READ_MY_PROFILE
    )),

    ASSISTANT_ADMINISTRATOR(Arrays.asList(
            RolePermissionEnum.READ_ALL_SONGS,
            RolePermissionEnum.READ_ONE_SONG,
            RolePermissionEnum.UPDATE_ONE_SONG,

            RolePermissionEnum.READ_ALL_GENRES,
            RolePermissionEnum.READ_ONE_GENRE,
            RolePermissionEnum.UPDATE_ONE_GENRE,

            RolePermissionEnum.DELETE_NO_ACTIVE_TOKENS,

            RolePermissionEnum.READ_MY_PROFILE
    )),

    CUSTOMER(List.of(
            RolePermissionEnum.READ_MY_PROFILE
    ));

    private List<RolePermissionEnum> permissions;
}
