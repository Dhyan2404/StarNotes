.class public Landroidx/biometric/BiometricManager$Strings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Strings"
.end annotation


# instance fields
.field public final a:Landroid/hardware/biometrics/BiometricManager$Strings;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Landroidx/biometric/BiometricManager$f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/BiometricManager$Strings;)V
    .locals 0
    .param p1    # Landroid/hardware/biometrics/BiometricManager$Strings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/biometric/BiometricManager$Strings;->a:Landroid/hardware/biometrics/BiometricManager$Strings;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroidx/biometric/BiometricManager$Strings;->b:Landroidx/biometric/BiometricManager$f;

    return-void
.end method

.method public constructor <init>(Landroidx/biometric/BiometricManager$f;)V
    .locals 1
    .param p1    # Landroidx/biometric/BiometricManager$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/biometric/BiometricManager$Strings;->a:Landroid/hardware/biometrics/BiometricManager$Strings;

    .line 6
    iput-object p1, p0, Landroidx/biometric/BiometricManager$Strings;->b:Landroidx/biometric/BiometricManager$f;

    return-void
.end method


# virtual methods
.method public getButtonLabel()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.USE_BIOMETRIC"
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/biometric/BiometricManager$Strings;->a:Landroid/hardware/biometrics/BiometricManager$Strings;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/biometric/BiometricManager$c;->a(Landroid/hardware/biometrics/BiometricManager$Strings;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricManager$Strings;->b:Landroidx/biometric/BiometricManager$f;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/biometric/BiometricManager$f;->a()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "BiometricManager"

    const-string v0, "Failure in Strings.getButtonLabel(). No available string provider."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPromptMessage()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.USE_BIOMETRIC"
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/biometric/BiometricManager$Strings;->a:Landroid/hardware/biometrics/BiometricManager$Strings;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/biometric/BiometricManager$c;->b(Landroid/hardware/biometrics/BiometricManager$Strings;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricManager$Strings;->b:Landroidx/biometric/BiometricManager$f;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/biometric/BiometricManager$f;->b()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "BiometricManager"

    const-string v0, "Failure in Strings.getPromptMessage(). No available string provider."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSettingName()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.USE_BIOMETRIC"
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/biometric/BiometricManager$Strings;->a:Landroid/hardware/biometrics/BiometricManager$Strings;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/biometric/BiometricManager$c;->c(Landroid/hardware/biometrics/BiometricManager$Strings;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricManager$Strings;->b:Landroidx/biometric/BiometricManager$f;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/biometric/BiometricManager$f;->c()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "BiometricManager"

    const-string v0, "Failure in Strings.getSettingName(). No available string provider."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
