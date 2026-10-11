package androidx.credentials.webauthn;

import androidx.annotation.RestrictTo;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\u001e\u0010\u001fJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u000f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006HÆ\u0003J-\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00042\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006HÆ\u0001J\t\u0010\f\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000e\u001a\u00020\rHÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001d\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006 "}, m61528d2 = {"Landroidx/credentials/webauthn/PublicKeyCredentialDescriptor;", "", "", "component1", "", "component2", "", "component3", "type", "id", "transports", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getType", "()Ljava/lang/String;", "b", "[B", "getId", "()[B", "c", "Ljava/util/List;", "getTransports", "()Ljava/util/List;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;[BLjava/util/List;)V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public final /* data */ class PublicKeyCredentialDescriptor {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String type;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final byte[] id;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<String> transports;

    public PublicKeyCredentialDescriptor(@NotNull String type, @NotNull byte[] id, @NotNull List<String> transports) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(transports, "transports");
        this.type = type;
        this.id = id;
        this.transports = transports;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PublicKeyCredentialDescriptor copy$default(PublicKeyCredentialDescriptor publicKeyCredentialDescriptor, String str, byte[] bArr, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = publicKeyCredentialDescriptor.type;
        }
        if ((i & 2) != 0) {
            bArr = publicKeyCredentialDescriptor.id;
        }
        if ((i & 4) != 0) {
            list = publicKeyCredentialDescriptor.transports;
        }
        return publicKeyCredentialDescriptor.copy(str, bArr, list);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getType() {
        return this.type;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final byte[] getId() {
        return this.id;
    }

    @NotNull
    public final List<String> component3() {
        return this.transports;
    }

    @NotNull
    public final PublicKeyCredentialDescriptor copy(@NotNull String type, @NotNull byte[] id, @NotNull List<String> transports) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(transports, "transports");
        return new PublicKeyCredentialDescriptor(type, id, transports);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PublicKeyCredentialDescriptor)) {
            return false;
        }
        PublicKeyCredentialDescriptor publicKeyCredentialDescriptor = (PublicKeyCredentialDescriptor) other;
        return Intrinsics.areEqual(this.type, publicKeyCredentialDescriptor.type) && Intrinsics.areEqual(this.id, publicKeyCredentialDescriptor.id) && Intrinsics.areEqual(this.transports, publicKeyCredentialDescriptor.transports);
    }

    @NotNull
    public final byte[] getId() {
        return this.id;
    }

    @NotNull
    public final List<String> getTransports() {
        return this.transports;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        return (((this.type.hashCode() * 31) + Arrays.hashCode(this.id)) * 31) + this.transports.hashCode();
    }

    @NotNull
    public String toString() {
        return "PublicKeyCredentialDescriptor(type=" + this.type + ", id=" + Arrays.toString(this.id) + ", transports=" + this.transports + ')';
    }
}
