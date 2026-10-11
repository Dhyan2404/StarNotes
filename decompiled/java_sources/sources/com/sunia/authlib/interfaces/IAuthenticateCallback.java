package com.sunia.authlib.interfaces;

import com.sunia.authlib.managers.ModuleAuthenticate;

/* loaded from: classes10.dex */
public interface IAuthenticateCallback {
    void onCallback(int i, int i2);

    void onModuleData(ModuleAuthenticate moduleAuthenticate);
}
