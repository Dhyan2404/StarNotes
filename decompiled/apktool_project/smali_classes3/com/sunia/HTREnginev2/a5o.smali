.class public Lcom/sunia/HTREnginev2/a5o;
.super Lcom/sunia/HTREnginev2/z4o;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/a5o$a;
    }
.end annotation


# static fields
.field public static m:Z = true


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/z4o;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-boolean p0, Lcom/sunia/HTREnginev2/a5o;->m:Z

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p1, p2}, Lcom/sunia/HTREnginev2/a5o$a;->a(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    sput-boolean p0, Lcom/sunia/HTREnginev2/a5o;->m:Z

    :cond_0
    :goto_0
    return-void
.end method
