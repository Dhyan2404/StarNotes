package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.QueryLanguage;
import com.couchbase.lite.internal.core.C4Collection;
import com.couchbase.lite.internal.utils.StringUtils;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

/* loaded from: classes4.dex */
public final class FullTextIndexConfiguration extends IndexConfiguration {
    private boolean ignoreDiacrits;

    @Nullable
    private String language;

    @Nullable
    private String where;

    public FullTextIndexConfiguration(@NonNull String... strArr) {
        this((List<String>) Arrays.asList(strArr));
    }

    @Override // com.couchbase.lite.AbstractIndex
    public void createIndex(@NonNull String str, @NonNull C4Collection c4Collection) throws LiteCoreException {
        c4Collection.createFullTextIndex(str, QueryLanguage.N1QL.getCode(), getIndexSpec(), this.language, this.ignoreDiacrits, this.where);
    }

    @Nullable
    public String getLanguage() {
        return this.language;
    }

    @Nullable
    public String getWhere() {
        return this.where;
    }

    @NonNull
    public FullTextIndexConfiguration ignoreAccents(boolean z) {
        this.ignoreDiacrits = z;
        return this;
    }

    public boolean isIgnoringAccents() {
        return this.ignoreDiacrits;
    }

    @NonNull
    public FullTextIndexConfiguration setLanguage(@Nullable String str) {
        if (StringUtils.isEmpty(str)) {
            str = null;
        }
        this.language = str;
        return this;
    }

    @NonNull
    public FullTextIndexConfiguration setWhere(@Nullable String str) {
        this.where = str;
        return this;
    }

    public FullTextIndexConfiguration(@NonNull List<String> list) {
        super(list);
        this.language = Locale.getDefault().getLanguage();
        this.ignoreDiacrits = false;
    }
}
