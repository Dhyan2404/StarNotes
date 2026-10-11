package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.QueryLanguage;
import com.couchbase.lite.internal.core.C4Collection;
import com.couchbase.lite.internal.utils.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes4.dex */
public final class FullTextIndex extends Index {

    @NonNull
    private final List<FullTextIndexItem> indexItems;

    @Nullable
    private String language = Locale.getDefault().getLanguage();
    private boolean ignoreDiacrits = false;

    public FullTextIndex(@NonNull FullTextIndexItem... fullTextIndexItemArr) {
        this.indexItems = Arrays.asList(fullTextIndexItemArr);
    }

    @Override // com.couchbase.lite.AbstractIndex
    public void createIndex(@NonNull String str, @NonNull C4Collection c4Collection) throws LiteCoreException, CouchbaseLiteException {
        c4Collection.createFullTextIndex(str, QueryLanguage.JSON.getCode(), getIndexSpec(), this.language, this.ignoreDiacrits, null);
    }

    @Override // com.couchbase.lite.Index
    @NonNull
    public List<Object> getJson() {
        ArrayList arrayList = new ArrayList();
        Iterator<FullTextIndexItem> it2 = this.indexItems.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().expression.asJSON());
        }
        return arrayList;
    }

    @Nullable
    public String getLanguage() {
        return this.language;
    }

    @NonNull
    public FullTextIndex ignoreAccents(boolean z) {
        this.ignoreDiacrits = z;
        return this;
    }

    public boolean isIgnoringAccents() {
        return this.ignoreDiacrits;
    }

    @NonNull
    public FullTextIndex setLanguage(@Nullable String str) {
        if (StringUtils.isEmpty(str)) {
            str = null;
        }
        this.language = str;
        return this;
    }
}
