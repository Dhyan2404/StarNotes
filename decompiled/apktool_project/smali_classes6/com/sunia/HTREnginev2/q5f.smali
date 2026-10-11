.class public abstract Lcom/sunia/HTREnginev2/q5f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/sunia/HTREnginev2/unf;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/q5f$b;,
        Lcom/sunia/HTREnginev2/q5f$c;,
        Lcom/sunia/HTREnginev2/q5f$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/sunia/HTREnginev2/q5f;
    .locals 1

    invoke-static {}, Lcom/sunia/HTREnginev2/q5f$b;->e()Lcom/sunia/HTREnginev2/q5f$b;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/sunia/HTREnginev2/q5f;
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/q5f$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/q5f$c;-><init>(Lcom/sunia/HTREnginev2/q5f$a;)V

    return-object v0
.end method

.method public static d()Lcom/sunia/HTREnginev2/q5f;
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/q5f$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/q5f$d;-><init>(Lcom/sunia/HTREnginev2/q5f$a;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/util/Iterator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Lcom/sunia/HTREnginev2/h5n;",
            ">;)V"
        }
    .end annotation
.end method
