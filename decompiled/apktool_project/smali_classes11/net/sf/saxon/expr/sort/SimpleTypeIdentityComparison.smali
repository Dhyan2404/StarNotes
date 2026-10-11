.class public Lnet/sf/saxon/expr/sort/SimpleTypeIdentityComparison;
.super Lnet/sf/saxon/expr/sort/SimpleTypeComparison;
.source "SourceFile"


# static fields
.field public static final b:Lnet/sf/saxon/expr/sort/SimpleTypeIdentityComparison;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/sort/SimpleTypeIdentityComparison;

    invoke-direct {v0}, Lnet/sf/saxon/expr/sort/SimpleTypeIdentityComparison;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/sort/SimpleTypeIdentityComparison;->b:Lnet/sf/saxon/expr/sort/SimpleTypeIdentityComparison;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/sort/SimpleTypeComparison;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/expr/sort/SimpleTypeIdentityComparison;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/sort/SimpleTypeIdentityComparison;->b:Lnet/sf/saxon/expr/sort/SimpleTypeIdentityComparison;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/om/AtomicSequence;

    check-cast p2, Lnet/sf/saxon/om/AtomicSequence;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/SimpleTypeIdentityComparison;->equal(Lnet/sf/saxon/om/AtomicSequence;Lnet/sf/saxon/om/AtomicSequence;)Z

    move-result p0

    return p0
.end method

.method public equal(Lnet/sf/saxon/om/AtomicSequence;Lnet/sf/saxon/om/AtomicSequence;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/sort/SimpleTypeComparison;->equalOrIdentical(Lnet/sf/saxon/om/AtomicSequence;Lnet/sf/saxon/om/AtomicSequence;)Z

    move-result p0

    return p0
.end method
