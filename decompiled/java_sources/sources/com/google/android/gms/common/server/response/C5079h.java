package com.google.android.gms.common.server.response;

import androidx.annotation.Nullable;
import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.io.IOException;
import java.math.BigDecimal;

/* renamed from: com.google.android.gms.common.server.response.h */
/* loaded from: classes5.dex */
public final class C5079h implements InterfaceC5080i {
    @Override // com.google.android.gms.common.server.response.InterfaceC5080i
    @Nullable
    /* renamed from: a */
    public final /* synthetic */ Object mo22227a(FastParser fastParser, BufferedReader bufferedReader) throws FastParser.ParseException, IOException {
        BigDecimal m22220t;
        m22220t = fastParser.m22220t(bufferedReader);
        return m22220t;
    }
}
