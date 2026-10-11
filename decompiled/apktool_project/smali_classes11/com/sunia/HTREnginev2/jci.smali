.class public abstract Lcom/sunia/HTREnginev2/jci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOBaseStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Lonyx/org/apache/commons/io/function/IOBaseStream<",
        "TT;TS;TB;>;B::",
        "Ljava/util/stream/BaseStream<",
        "TT;TB;>;>",
        "Ljava/lang/Object;",
        "Lonyx/org/apache/commons/io/function/IOBaseStream<",
        "TT;TS;TB;>;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/stream/BaseStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/stream/BaseStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/stream/BaseStream;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jci;->e:Ljava/util/stream/BaseStream;

    return-void
.end method


# virtual methods
.method public unwrap()Ljava/util/stream/BaseStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jci;->e:Ljava/util/stream/BaseStream;

    return-object p0
.end method
