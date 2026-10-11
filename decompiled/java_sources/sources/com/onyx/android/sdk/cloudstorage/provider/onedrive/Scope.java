package com.onyx.android.sdk.cloudstorage.provider.onedrive;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.C7153R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001:\u0005\n\u000b\f\r\u000eB\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u0006\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope;", "", "", "res", "", "a", "DELIM", Constants.STRING_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "FILES", "NOTES", "OFFICE", "USER", "WL", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class Scope {

    @NotNull
    public static final String DELIM = "\n---\n";

    @NotNull
    public static final Scope INSTANCE = new Scope();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0016R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\bj\u0002\b\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$FILES;", "", "(Ljava/lang/String;I)V", "scope", "", "getScope", "()Ljava/lang/String;", "toString", "READWRITE_ALL", "READWRITE", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class FILES {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ FILES[] $VALUES;
        public static final FILES READWRITE_ALL = new FILES("READWRITE_ALL", 0);
        public static final FILES READWRITE = new FILES("READWRITE", 1);

        private static final /* synthetic */ FILES[] $values() {
            return new FILES[]{READWRITE_ALL, READWRITE};
        }

        static {
            FILES[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private FILES(String str, int i) {
        }

        @NotNull
        public static EnumEntries<FILES> getEntries() {
            return $ENTRIES;
        }

        public static FILES valueOf(String str) {
            return (FILES) Enum.valueOf(FILES.class, str);
        }

        public static FILES[] values() {
            return (FILES[]) $VALUES.clone();
        }

        @NotNull
        public final String getScope() {
            return "files." + new Regex("_").replace(name(), ".");
        }

        @Override // java.lang.Enum
        @NotNull
        public String toString() {
            return getScope();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0016R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\bj\u0002\b\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$NOTES;", "", "(Ljava/lang/String;I)V", "scope", "", "getScope", "()Ljava/lang/String;", "toString", "CREATE", "READWRITE_ALL", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class NOTES {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ NOTES[] $VALUES;
        public static final NOTES CREATE = new NOTES("CREATE", 0);
        public static final NOTES READWRITE_ALL = new NOTES("READWRITE_ALL", 1);

        private static final /* synthetic */ NOTES[] $values() {
            return new NOTES[]{CREATE, READWRITE_ALL};
        }

        static {
            NOTES[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private NOTES(String str, int i) {
        }

        @NotNull
        public static EnumEntries<NOTES> getEntries() {
            return $ENTRIES;
        }

        public static NOTES valueOf(String str) {
            return (NOTES) Enum.valueOf(NOTES.class, str);
        }

        public static NOTES[] values() {
            return (NOTES[]) $VALUES.clone();
        }

        @NotNull
        public final String getScope() {
            return "Notes." + new Regex("_").replace(name(), ".");
        }

        @Override // java.lang.Enum
        @NotNull
        public String toString() {
            return getScope();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\u0006H\u0016R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\n\u0010\bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$OFFICE;", "", "desc", "", "(Ljava/lang/String;II)V", "description", "", "getDescription", "()Ljava/lang/String;", "scope", "getScope", "toString", "ONENOTE_CREATE", "ONENOTE_UPDATE", "ONENOTE", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class OFFICE {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ OFFICE[] $VALUES;

        @Nullable
        private final String description;
        public static final OFFICE ONENOTE_CREATE = new OFFICE("ONENOTE_CREATE", 0, C7153R.string.on_create);
        public static final OFFICE ONENOTE_UPDATE = new OFFICE("ONENOTE_UPDATE", 1, C7153R.string.on_update);
        public static final OFFICE ONENOTE = new OFFICE("ONENOTE", 2, C7153R.string.on_base);

        private static final /* synthetic */ OFFICE[] $values() {
            return new OFFICE[]{ONENOTE_CREATE, ONENOTE_UPDATE, ONENOTE};
        }

        static {
            OFFICE[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private OFFICE(String str, int i, int i2) {
            this.description = Scope.INSTANCE.m32749a(i2);
        }

        @NotNull
        public static EnumEntries<OFFICE> getEntries() {
            return $ENTRIES;
        }

        public static OFFICE valueOf(String str) {
            return (OFFICE) Enum.valueOf(OFFICE.class, str);
        }

        public static OFFICE[] values() {
            return (OFFICE[]) $VALUES.clone();
        }

        @Nullable
        public final String getDescription() {
            return this.description;
        }

        @NotNull
        public final String getScope() {
            return "office." + name();
        }

        @Override // java.lang.Enum
        @NotNull
        public String toString() {
            return getScope() + Scope.DELIM + this.description;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0016R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;", "", "(Ljava/lang/String;I)V", "scope", "", "getScope", "()Ljava/lang/String;", "toString", "READ", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class USER {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ USER[] $VALUES;
        public static final USER READ = new USER("READ", 0);

        private static final /* synthetic */ USER[] $values() {
            return new USER[]{READ};
        }

        static {
            USER[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private USER(String str, int i) {
        }

        @NotNull
        public static EnumEntries<USER> getEntries() {
            return $ENTRIES;
        }

        public static USER valueOf(String str) {
            return (USER) Enum.valueOf(USER.class, str);
        }

        public static USER[] values() {
            return (USER[]) $VALUES.clone();
        }

        @NotNull
        public final String getScope() {
            return "user." + new Regex("_").replace(name(), ".");
        }

        @Override // java.lang.Enum
        @NotNull
        public String toString() {
            return getScope();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\u0006H\u0016R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\n\u0010\bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;", "", "desc", "", "(Ljava/lang/String;II)V", "description", "", "getDescription", "()Ljava/lang/String;", "scope", "getScope", "toString", "SIGN_IN", "OFFLINE_ACCESS", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.onedrive.Scope$WL */
    /* loaded from: classes7.dex */
    public static final class EnumC7324WL {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ EnumC7324WL[] $VALUES;

        @Nullable
        private final String description;
        public static final EnumC7324WL SIGN_IN = new EnumC7324WL("SIGN_IN", 0, C7153R.string.wl_signin);
        public static final EnumC7324WL OFFLINE_ACCESS = new EnumC7324WL("OFFLINE_ACCESS", 1, C7153R.string.wl_offline_access);

        private static final /* synthetic */ EnumC7324WL[] $values() {
            return new EnumC7324WL[]{SIGN_IN, OFFLINE_ACCESS};
        }

        static {
            EnumC7324WL[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private EnumC7324WL(String str, int i, int i2) {
            this.description = Scope.INSTANCE.m32749a(i2);
        }

        @NotNull
        public static EnumEntries<EnumC7324WL> getEntries() {
            return $ENTRIES;
        }

        public static EnumC7324WL valueOf(String str) {
            return (EnumC7324WL) Enum.valueOf(EnumC7324WL.class, str);
        }

        public static EnumC7324WL[] values() {
            return (EnumC7324WL[]) $VALUES.clone();
        }

        @Nullable
        public final String getDescription() {
            return this.description;
        }

        @NotNull
        public final String getScope() {
            return "wl." + name();
        }

        @Override // java.lang.Enum
        @NotNull
        public String toString() {
            return getScope() + Scope.DELIM + this.description;
        }
    }

    /* renamed from: a */
    public final String m32749a(int res) {
        return ResManager.INSTANCE.getString(res);
    }
}
