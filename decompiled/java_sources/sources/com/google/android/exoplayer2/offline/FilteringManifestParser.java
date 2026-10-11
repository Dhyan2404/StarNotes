package com.google.android.exoplayer2.offline;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.offline.FilterableManifest;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* loaded from: classes5.dex */
public final class FilteringManifestParser<T extends FilterableManifest<T>> implements ParsingLoadable.Parser<T> {

    /* renamed from: e */
    public final ParsingLoadable.Parser<? extends T> f25085e;

    /* renamed from: f */
    @Nullable
    public final List<StreamKey> f25086f;

    public FilteringManifestParser(ParsingLoadable.Parser<? extends T> parser, @Nullable List<StreamKey> list) {
        this.f25085e = parser;
        this.f25086f = list;
    }

    @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
    public T parse(Uri uri, InputStream inputStream) throws IOException {
        T parse = this.f25085e.parse(uri, inputStream);
        List<StreamKey> list = this.f25086f;
        return (list == null || list.isEmpty()) ? parse : (T) parse.copy(this.f25086f);
    }
}
