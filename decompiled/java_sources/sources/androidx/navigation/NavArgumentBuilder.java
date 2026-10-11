package androidx.navigation;

import androidx.credentials.provider.utils.PrivilegedApp;
import androidx.navigation.NavArgument;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@NavDestinationDsl
@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0017\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b!\u0010\"J\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u001c\u0010\u000b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR*\u0010\u0014\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R.\u0010\u001b\u001a\u0004\u0018\u00010\u00012\b\u0010\r\u001a\u0004\u0018\u00010\u00018\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR,\u0010 \u001a\u0006\u0012\u0002\b\u00030\b2\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\b8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006#"}, m61528d2 = {"Landroidx/navigation/NavArgumentBuilder;", "", "Landroidx/navigation/NavArgument;", PrivilegedApp.f6529f, "Landroidx/navigation/NavArgument$Builder;", "a", "Landroidx/navigation/NavArgument$Builder;", "builder", "Landroidx/navigation/NavType;", "b", "Landroidx/navigation/NavType;", "_type", "", "value", "c", Constants.HASIDCALL_INDEX_SIG, "getNullable", Constants.BOOLEAN_VALUE_SIG, "setNullable", "(Z)V", "nullable", "d", Constants.OBJECT_SIG, "getDefaultValue", "()Ljava/lang/Object;", "setDefaultValue", "(Ljava/lang/Object;)V", "defaultValue", "getType", "()Landroidx/navigation/NavType;", "setType", "(Landroidx/navigation/NavType;)V", "type", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "navigation-common_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class NavArgumentBuilder {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final NavArgument.Builder builder = new NavArgument.Builder();

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public NavType<?> _type;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean nullable;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public Object defaultValue;

    @NotNull
    public final NavArgument build() {
        return this.builder.build();
    }

    @Nullable
    public final Object getDefaultValue() {
        return this.defaultValue;
    }

    public final boolean getNullable() {
        return this.nullable;
    }

    @NotNull
    public final NavType<?> getType() {
        NavType<?> navType = this._type;
        if (navType != null) {
            return navType;
        }
        throw new IllegalStateException("NavType has not been set on this builder.");
    }

    public final void setDefaultValue(@Nullable Object obj) {
        this.defaultValue = obj;
        this.builder.setDefaultValue(obj);
    }

    public final void setNullable(boolean z) {
        this.nullable = z;
        this.builder.setIsNullable(z);
    }

    public final void setType(@NotNull NavType<?> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this._type = value;
        this.builder.setType(value);
    }
}
