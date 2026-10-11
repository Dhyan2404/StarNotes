.class public interface abstract Lcom/sunia/HTREnginev2/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/z$c;,
        Lcom/sunia/HTREnginev2/z$d;,
        Lcom/sunia/HTREnginev2/z$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/sunia/HTREnginev2/z;

.field public static final b:Lcom/sunia/HTREnginev2/z;

.field public static final c:Lcom/sunia/HTREnginev2/z;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sunia/HTREnginev2/z$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/z$c;-><init>(Lcom/sunia/HTREnginev2/z$a;)V

    sput-object v0, Lcom/sunia/HTREnginev2/z;->a:Lcom/sunia/HTREnginev2/z;

    new-instance v0, Lcom/sunia/HTREnginev2/z$d;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/z$d;-><init>(Lcom/sunia/HTREnginev2/z$a;)V

    sput-object v0, Lcom/sunia/HTREnginev2/z;->b:Lcom/sunia/HTREnginev2/z;

    new-instance v0, Lcom/sunia/HTREnginev2/z$b;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/z$b;-><init>(JF)V

    sput-object v0, Lcom/sunia/HTREnginev2/z;->c:Lcom/sunia/HTREnginev2/z;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/q;)Z
.end method
