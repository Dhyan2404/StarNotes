.class public Lnet/sf/saxon/expr/sort/AtomicSortComparer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicMatchKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/sort/AtomicSortComparer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/sf/saxon/expr/sort/AtomicSortComparer$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/expr/sort/AtomicSortComparer$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnet/sf/saxon/expr/sort/AtomicMatchKey;)I
    .locals 0

    const/high16 p0, -0x80000000

    return p0
.end method

.method public asAtomic()Lnet/sf/saxon/value/AtomicValue;
    .locals 3

    new-instance p0, Lnet/sf/saxon/value/QNameValue;

    const-string v0, "http://saxon.sf.net/collation-key"

    const-string v1, "NaN"

    const-string v2, "saxon"

    invoke-direct {p0, v2, v0, v1}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
