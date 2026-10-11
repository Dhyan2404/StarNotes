.class public Lnet/sf/saxon/expr/parser/LoopLifter$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/parser/LoopLifter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/expr/Expression;

.field public b:I

.field public c:Z

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/expr/Expression;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/LoopLifter$b;->d:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lnet/sf/saxon/expr/parser/LoopLifter$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lnet/sf/saxon/expr/parser/LoopLifter$b;-><init>()V

    return-void
.end method
