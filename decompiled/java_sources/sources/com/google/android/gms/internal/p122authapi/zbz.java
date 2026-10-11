package com.google.android.gms.internal.p122authapi;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.AuthorizationResult;
import com.google.android.gms.common.api.Status;

/* loaded from: classes5.dex */
public interface zbz extends IInterface {
    void zbb(Status status, AuthorizationResult authorizationResult) throws RemoteException;
}
