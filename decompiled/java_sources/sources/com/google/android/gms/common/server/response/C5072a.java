package com.google.android.gms.common.server.response;

import androidx.annotation.Nullable;
import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.io.IOException;

/* renamed from: com.google.android.gms.common.server.response.a */
/* loaded from: classes5.dex */
public final class C5072a implements InterfaceC5080i {
    @Override // com.google.android.gms.common.server.response.InterfaceC5080i
    @Nullable
    /* renamed from: a */
    public final /* synthetic */ Object mo22227a(FastParser fastParser, BufferedReader bufferedReader) throws FastParser.ParseException, IOException {
        int m22213m;
        m22213m = fastParser.m22213m(bufferedReader);
        return Integer.valueOf(m22213m);
    }
}
