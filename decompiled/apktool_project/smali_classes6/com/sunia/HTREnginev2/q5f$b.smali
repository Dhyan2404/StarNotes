.class public final Lcom/sunia/HTREnginev2/q5f$b;
.super Lcom/sunia/HTREnginev2/q5f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/q5f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/sunia/HTREnginev2/q5f$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/q5f$b;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/q5f$b;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/q5f$b;->a:Lcom/sunia/HTREnginev2/q5f$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/q5f;-><init>()V

    return-void
.end method

.method public static synthetic e()Lcom/sunia/HTREnginev2/q5f$b;
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/q5f$b;->a:Lcom/sunia/HTREnginev2/q5f$b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Lcom/sunia/HTREnginev2/h5n;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/h5n;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/h5n;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
