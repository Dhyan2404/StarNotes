.class public Lcom/google/android/material/color/ColorContrast$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/UiModeManager$ContrastChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/color/ColorContrast$a;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/color/ColorContrast$a;


# direct methods
.method public constructor <init>(Lcom/google/android/material/color/ColorContrast$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/color/ColorContrast$a$a;->a:Lcom/google/android/material/color/ColorContrast$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContrastChanged(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/color/ColorContrast$a$a;->a:Lcom/google/android/material/color/ColorContrast$a;

    invoke-static {p0}, Lcom/google/android/material/color/ColorContrast$a;->a(Lcom/google/android/material/color/ColorContrast$a;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    :cond_0
    return-void
.end method
