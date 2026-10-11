.class public Lnet/sf/saxon/expr/sort/EmptyIntIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# static fields
.field public static final a:Lnet/sf/saxon/expr/sort/EmptyIntIterator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/sort/EmptyIntIterator;

    invoke-direct {v0}, Lnet/sf/saxon/expr/sort/EmptyIntIterator;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/sort/EmptyIntIterator;->a:Lnet/sf/saxon/expr/sort/EmptyIntIterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/expr/sort/EmptyIntIterator;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/sort/EmptyIntIterator;->a:Lnet/sf/saxon/expr/sort/EmptyIntIterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public next()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
