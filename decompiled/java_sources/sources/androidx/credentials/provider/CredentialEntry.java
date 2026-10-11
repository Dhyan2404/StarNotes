package androidx.credentials.provider;

import android.app.slice.Slice;
import android.app.slice.SliceSpec;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.credentials.PasswordCredential;
import androidx.credentials.PublicKeyCredential;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0019\b\u0000\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0007\u001a\u00020\u00028\u0017X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0011"}, m61528d2 = {"Landroidx/credentials/provider/CredentialEntry;", "", "", "a", Constants.STRING_SIG, "getType", "()Ljava/lang/String;", "type", "Landroidx/credentials/provider/BeginGetCredentialOption;", "b", "Landroidx/credentials/provider/BeginGetCredentialOption;", "getBeginGetCredentialOption", "()Landroidx/credentials/provider/BeginGetCredentialOption;", "beginGetCredentialOption", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Landroidx/credentials/provider/BeginGetCredentialOption;)V", "Companion", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class CredentialEntry {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String type;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final BeginGetCredentialOption beginGetCredentialOption;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¢\u0006\u0002\b\u0007J\u0017\u0010\b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u0004H\u0001¢\u0006\u0002\b\n¨\u0006\u000b"}, m61528d2 = {"Landroidx/credentials/provider/CredentialEntry$Companion;", "", "()V", "createFrom", "Landroidx/credentials/provider/CredentialEntry;", "slice", "Landroid/app/slice/Slice;", "createFrom$credentials_release", "toSlice", "entry", "toSlice$credentials_release", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @RequiresApi(28)
        @Nullable
        public final CredentialEntry createFrom$credentials_release(@NotNull Slice slice) {
            Intrinsics.checkNotNullParameter(slice, "slice");
            try {
                SliceSpec spec = slice.getSpec();
                String type = spec != null ? spec.getType() : null;
                if (Intrinsics.areEqual(type, PasswordCredential.TYPE_PASSWORD_CREDENTIAL)) {
                    PasswordCredentialEntry fromSlice = PasswordCredentialEntry.INSTANCE.fromSlice(slice);
                    Intrinsics.checkNotNull(fromSlice);
                    return fromSlice;
                }
                if (Intrinsics.areEqual(type, PublicKeyCredential.TYPE_PUBLIC_KEY_CREDENTIAL)) {
                    PublicKeyCredentialEntry fromSlice2 = PublicKeyCredentialEntry.INSTANCE.fromSlice(slice);
                    Intrinsics.checkNotNull(fromSlice2);
                    return fromSlice2;
                }
                CustomCredentialEntry fromSlice3 = CustomCredentialEntry.INSTANCE.fromSlice(slice);
                Intrinsics.checkNotNull(fromSlice3);
                return fromSlice3;
            } catch (Exception unused) {
                return CustomCredentialEntry.INSTANCE.fromSlice(slice);
            }
        }

        @JvmStatic
        @RequiresApi(28)
        @Nullable
        public final Slice toSlice$credentials_release(@NotNull CredentialEntry entry) {
            Intrinsics.checkNotNullParameter(entry, "entry");
            if (entry instanceof PasswordCredentialEntry) {
                return PasswordCredentialEntry.INSTANCE.toSlice((PasswordCredentialEntry) entry);
            }
            if (entry instanceof PublicKeyCredentialEntry) {
                return PublicKeyCredentialEntry.INSTANCE.toSlice((PublicKeyCredentialEntry) entry);
            }
            if (entry instanceof CustomCredentialEntry) {
                return CustomCredentialEntry.INSTANCE.toSlice((CustomCredentialEntry) entry);
            }
            return null;
        }

        public Companion() {
        }
    }

    public CredentialEntry(@NotNull String type, @NotNull BeginGetCredentialOption beginGetCredentialOption) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(beginGetCredentialOption, "beginGetCredentialOption");
        this.type = type;
        this.beginGetCredentialOption = beginGetCredentialOption;
    }

    @NotNull
    public final BeginGetCredentialOption getBeginGetCredentialOption() {
        return this.beginGetCredentialOption;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public String getType() {
        return this.type;
    }
}
