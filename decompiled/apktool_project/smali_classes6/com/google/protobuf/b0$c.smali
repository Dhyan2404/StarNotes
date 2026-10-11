.class public Lcom/google/protobuf/b0$c;
.super Lcom/google/protobuf/b0$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/b0<",
        "TK;TV;>.g;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/google/protobuf/b0;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/b0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/b0$c;->f:Lcom/google/protobuf/b0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/b0$g;-><init>(Lcom/google/protobuf/b0;Lcom/google/protobuf/b0$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/b0;Lcom/google/protobuf/b0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/b0$c;-><init>(Lcom/google/protobuf/b0;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/b0$b;

    iget-object p0, p0, Lcom/google/protobuf/b0$c;->f:Lcom/google/protobuf/b0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/b0$b;-><init>(Lcom/google/protobuf/b0;Lcom/google/protobuf/b0$a;)V

    return-object v0
.end method
