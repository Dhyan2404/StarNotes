.class public final Lcom/google/common/collect/ImmutableSet$a;
.super Lcom/google/common/collect/ImmutableSet$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet$d<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final c:Lcom/google/common/collect/ImmutableSet$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/ImmutableSet$a;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSet$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/ImmutableSet$a;->c:Lcom/google/common/collect/ImmutableSet$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSet$d;-><init>(I)V

    return-void
.end method

.method public static h()Lcom/google/common/collect/ImmutableSet$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSet$d<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/ImmutableSet$a;->c:Lcom/google/common/collect/ImmutableSet$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSet$d<",
            "TE;>;"
        }
    .end annotation

    new-instance p0, Lcom/google/common/collect/ImmutableSet$c;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSet$c;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$c;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$d;

    move-result-object p0

    return-object p0
.end method

.method public c()Lcom/google/common/collect/ImmutableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public e()Lcom/google/common/collect/ImmutableSet$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet$d<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method
