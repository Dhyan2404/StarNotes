.class public Lcom/sunia/HTREnginev2/jnd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/jnd$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/reflect/Method;

.field public static b:Ljava/lang/reflect/Method;

.field public static c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Canvas;Z)V
    .locals 0
    .param p0    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SoonBlockedPrivateApi"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/jnd$a;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sunia/HTREnginev2/jnd$a;->a(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method
