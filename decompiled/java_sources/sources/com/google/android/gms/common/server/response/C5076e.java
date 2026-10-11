package com.google.android.gms.common.server.response;

import androidx.annotation.Nullable;
import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.io.IOException;

/* renamed from: com.google.android.gms.common.server.response.e */
/* loaded from: classes5.dex */
public final class C5076e implements InterfaceC5080i {
    @Override // com.google.android.gms.common.server.response.InterfaceC5080i
    @Nullable
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo22227a(FastParser fastParser, BufferedReader bufferedReader) throws FastParser.ParseException, IOException {
        boolean m22226z;
        m22226z = fastParser.m22226z(bufferedReader, false);
        return Boolean.valueOf(m22226z);
    }
}
