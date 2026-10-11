.class public Lnet/sf/saxon/tree/jiter/TopDownStackIterable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Stack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/jiter/TopDownStackIterable;->e:Ljava/util/Stack;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/tree/jiter/TopDownStackIterable;)Ljava/util/Stack;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/jiter/TopDownStackIterable;->e:Ljava/util/Stack;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/tree/jiter/TopDownStackIterable$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/jiter/TopDownStackIterable$a;-><init>(Lnet/sf/saxon/tree/jiter/TopDownStackIterable;)V

    return-object v0
.end method
