package com.sunia.HTREnginev2;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.location.LocationSettingsResponse;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes5.dex */
public final class mip implements BaseImplementation.ResultHolder<LocationSettingsResult> {

    /* renamed from: a */
    public final TaskCompletionSource<LocationSettingsResponse> f77656a;

    public mip(TaskCompletionSource<LocationSettingsResponse> taskCompletionSource) {
        this.f77656a = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final void setFailedResult(Status status) {
        this.f77656a.setException(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final /* bridge */ /* synthetic */ void setResult(LocationSettingsResult locationSettingsResult) {
        LocationSettingsResult locationSettingsResult2 = locationSettingsResult;
        Status status = locationSettingsResult2.getStatus();
        if (status.isSuccess()) {
            this.f77656a.setResult(new LocationSettingsResponse(locationSettingsResult2));
        } else if (status.hasResolution()) {
            this.f77656a.setException(new ResolvableApiException(status));
        } else {
            this.f77656a.setException(new ApiException(status));
        }
    }
}
