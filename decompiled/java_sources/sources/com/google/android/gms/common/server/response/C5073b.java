package com.google.android.gms.common.server.response;

import androidx.annotation.Nullable;
import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.io.IOException;

/* renamed from: com.google.android.gms.common.server.response.b */
/* loaded from: classes5.dex */
public final class C5073b implements InterfaceC5080i {
    @Override // com.google.android.gms.common.server.response.InterfaceC5080i
    @Nullable
    /* renamed from: a */
    public final /* synthetic */ Object mo22227a(FastParser fastParser, BufferedReader bufferedReader) throws FastParser.ParseException, IOException {
        long m22215o;
        m22215o = fastParser.m22215o(bufferedReader);
        return Long.valueOf(m22215o);
    }
}
