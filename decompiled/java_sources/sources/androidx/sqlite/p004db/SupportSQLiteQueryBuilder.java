package androidx.sqlite.p004db;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000e\u0018\u0000 '2\u00020\u0001:\u0001'B\u0011\b\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0004¢\u0006\u0004\b%\u0010&J\u0006\u0010\u0002\u001a\u00020\u0000J\u001f\u0010\u0005\u001a\u00020\u00002\u0010\u0010\u0005\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J+\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0012\u0010\b\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0003¢\u0006\u0004\b\u0007\u0010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0004J\u0006\u0010\u000f\u001a\u00020\u000eJ\"\u0010\u0015\u001a\u00020\u0014*\u00060\u0010j\u0002`\u00112\u0006\u0010\u0012\u001a\u00020\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004H\u0002J'\u0010\u0016\u001a\u00020\u0014*\u00060\u0010j\u0002`\u00112\u000e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003H\u0002¢\u0006\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0018R\u0016\u0010\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u001bR \u0010\u0005\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u0018R\"\u0010\b\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\u0018R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010\u0018R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010\u0018R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010\u0018¨\u0006("}, m61528d2 = {"Landroidx/sqlite/db/SupportSQLiteQueryBuilder;", "", "distinct", "", "", "columns", "([Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteQueryBuilder;", "selection", "bindArgs", "(Ljava/lang/String;[Ljava/lang/Object;)Landroidx/sqlite/db/SupportSQLiteQueryBuilder;", "groupBy", "having", "orderBy", "limit", "Landroidx/sqlite/db/SupportSQLiteQuery;", BaiduYunConstant.CREATE, "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "name", "clause", "", "a", "b", "(Ljava/lang/StringBuilder;[Ljava/lang/String;)V", Constants.STRING_SIG, "table", "", Constants.HASIDCALL_INDEX_SIG, "c", "[Ljava/lang/String;", "d", "e", "[Ljava/lang/Object;", C6997f.f39671c, C6998g.f39679a, C6999h.f39688c, "i", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "Companion", "sqlite_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class SupportSQLiteQueryBuilder {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: j */
    public static final Pattern f10304j = Pattern.compile("\\s*\\d+\\s*(,\\s*\\d+\\s*)?");

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String table;

    /* renamed from: b, reason: from kotlin metadata */
    public boolean distinct;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String[] columns;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public String selection;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public Object[] bindArgs;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public String groupBy;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public String having;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public String orderBy;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public String limit;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0007R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Landroidx/sqlite/db/SupportSQLiteQueryBuilder$Companion;", "", "()V", "limitPattern", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "builder", "Landroidx/sqlite/db/SupportSQLiteQueryBuilder;", "tableName", "", "sqlite_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final SupportSQLiteQueryBuilder builder(@NotNull String tableName) {
            Intrinsics.checkNotNullParameter(tableName, "tableName");
            return new SupportSQLiteQueryBuilder(tableName, null);
        }

        public Companion() {
        }
    }

    public /* synthetic */ SupportSQLiteQueryBuilder(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    @JvmStatic
    @NotNull
    public static final SupportSQLiteQueryBuilder builder(@NotNull String str) {
        return INSTANCE.builder(str);
    }

    /* renamed from: a */
    public final void m6409a(StringBuilder sb, String str, String str2) {
        if (str2 == null || str2.length() == 0) {
            return;
        }
        sb.append(str);
        sb.append(str2);
    }

    /* renamed from: b */
    public final void m6410b(StringBuilder sb, String[] strArr) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(str);
        }
        sb.append(' ');
    }

    @NotNull
    public final SupportSQLiteQueryBuilder columns(@Nullable String[] columns) {
        this.columns = columns;
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0047, code lost:
    
        if ((r3.length == 0) != false) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0096  */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.sqlite.p004db.SupportSQLiteQuery create() {
        /*
            r5 = this;
            java.lang.String r0 = r5.groupBy
            r1 = 0
            r2 = 1
            if (r0 == 0) goto Lf
            int r0 = r0.length()
            if (r0 != 0) goto Ld
            goto Lf
        Ld:
            r0 = r1
            goto L10
        Lf:
            r0 = r2
        L10:
            if (r0 == 0) goto L25
            java.lang.String r0 = r5.having
            if (r0 == 0) goto L1f
            int r0 = r0.length()
            if (r0 != 0) goto L1d
            goto L1f
        L1d:
            r0 = r1
            goto L20
        L1f:
            r0 = r2
        L20:
            if (r0 == 0) goto L23
            goto L25
        L23:
            r0 = r1
            goto L26
        L25:
            r0 = r2
        L26:
            if (r0 == 0) goto L96
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r3 = 120(0x78, float:1.68E-43)
            r0.<init>(r3)
            java.lang.String r3 = "SELECT "
            r0.append(r3)
            boolean r3 = r5.distinct
            if (r3 == 0) goto L3d
            java.lang.String r3 = "DISTINCT "
            r0.append(r3)
        L3d:
            java.lang.String[] r3 = r5.columns
            if (r3 == 0) goto L49
            int r4 = r3.length
            if (r4 != 0) goto L46
            r4 = r2
            goto L47
        L46:
            r4 = r1
        L47:
            if (r4 == 0) goto L4a
        L49:
            r1 = r2
        L4a:
            if (r1 != 0) goto L53
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            r5.m6410b(r0, r3)
            goto L58
        L53:
            java.lang.String r1 = "* "
            r0.append(r1)
        L58:
            java.lang.String r1 = "FROM "
            r0.append(r1)
            java.lang.String r1 = r5.table
            r0.append(r1)
            java.lang.String r1 = " WHERE "
            java.lang.String r2 = r5.selection
            r5.m6409a(r0, r1, r2)
            java.lang.String r1 = " GROUP BY "
            java.lang.String r2 = r5.groupBy
            r5.m6409a(r0, r1, r2)
            java.lang.String r1 = " HAVING "
            java.lang.String r2 = r5.having
            r5.m6409a(r0, r1, r2)
            java.lang.String r1 = " ORDER BY "
            java.lang.String r2 = r5.orderBy
            r5.m6409a(r0, r1, r2)
            java.lang.String r1 = " LIMIT "
            java.lang.String r2 = r5.limit
            r5.m6409a(r0, r1, r2)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "StringBuilder(capacity).…builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            androidx.sqlite.db.SimpleSQLiteQuery r1 = new androidx.sqlite.db.SimpleSQLiteQuery
            java.lang.Object[] r5 = r5.bindArgs
            r1.<init>(r0, r5)
            return r1
        L96:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "HAVING clauses are only permitted when using a groupBy clause"
            java.lang.String r0 = r0.toString()
            r5.<init>(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.sqlite.p004db.SupportSQLiteQueryBuilder.create():androidx.sqlite.db.SupportSQLiteQuery");
    }

    @NotNull
    public final SupportSQLiteQueryBuilder distinct() {
        this.distinct = true;
        return this;
    }

    @NotNull
    public final SupportSQLiteQueryBuilder groupBy(@Nullable String groupBy) {
        this.groupBy = groupBy;
        return this;
    }

    @NotNull
    public final SupportSQLiteQueryBuilder having(@Nullable String having) {
        this.having = having;
        return this;
    }

    @NotNull
    public final SupportSQLiteQueryBuilder limit(@NotNull String limit) {
        Intrinsics.checkNotNullParameter(limit, "limit");
        boolean matches = f10304j.matcher(limit).matches();
        boolean z = true;
        if (!(limit.length() == 0) && !matches) {
            z = false;
        }
        if (z) {
            this.limit = limit;
            return this;
        }
        throw new IllegalArgumentException(("invalid LIMIT clauses:" + limit).toString());
    }

    @NotNull
    public final SupportSQLiteQueryBuilder orderBy(@Nullable String orderBy) {
        this.orderBy = orderBy;
        return this;
    }

    @NotNull
    public final SupportSQLiteQueryBuilder selection(@Nullable String selection, @Nullable Object[] bindArgs) {
        this.selection = selection;
        this.bindArgs = bindArgs;
        return this;
    }

    public SupportSQLiteQueryBuilder(String str) {
        this.table = str;
    }
}
