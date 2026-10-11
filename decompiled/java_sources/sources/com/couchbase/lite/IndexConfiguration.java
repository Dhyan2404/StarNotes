package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.IndexConfiguration;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import com.couchbase.lite.internal.utils.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes4.dex */
public abstract class IndexConfiguration extends AbstractIndex {

    @NonNull
    private final List<String> expressions;

    public IndexConfiguration(@NonNull String... strArr) {
        this((List<String>) Arrays.asList(strArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$new$0(String str) {
        return str != null;
    }

    @NonNull
    public final List<String> getExpressions() {
        return new ArrayList(this.expressions);
    }

    @Override // com.couchbase.lite.AbstractIndex
    @NonNull
    public final String getIndexSpec() {
        return StringUtils.join(",", this.expressions);
    }

    public IndexConfiguration(@NonNull List<String> list) {
        List<String> filterToList = InterfaceC2217Fn.filterToList(Preconditions.assertNotEmpty(list, "expressions"), new InterfaceC2217Fn.NullablePredicate() { // from class: com.sunia.HTREnginev2.pji
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullablePredicate
            public final boolean test(Object obj) {
                boolean lambda$new$0;
                lambda$new$0 = IndexConfiguration.lambda$new$0((String) obj);
                return lambda$new$0;
            }
        });
        this.expressions = filterToList;
        if (list.size() != filterToList.size()) {
            throw new IllegalArgumentException("Expressions may not be null");
        }
    }
}
