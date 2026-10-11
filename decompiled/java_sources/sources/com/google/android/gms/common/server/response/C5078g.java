package com.google.android.gms.common.server.response;

import androidx.annotation.Nullable;
import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.io.IOException;
import java.math.BigInteger;

/* renamed from: com.google.android.gms.common.server.response.g */
/* loaded from: classes5.dex */
public final class C5078g implements InterfaceC5080i {
    @Override // com.google.android.gms.common.server.response.InterfaceC5080i
    @Nullable
    /* renamed from: a */
    public final /* synthetic */ Object mo22227a(FastParser fastParser, BufferedReader bufferedReader) throws FastParser.ParseException, IOException {
        BigInteger m22221u;
        m22221u = fastParser.m22221u(bufferedReader);
        return m22221u;
    }
}
