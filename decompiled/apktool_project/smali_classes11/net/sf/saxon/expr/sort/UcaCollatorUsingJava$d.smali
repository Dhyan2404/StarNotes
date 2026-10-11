.class public Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$d;->a:Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$d;-><init>(Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;)V

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 1

    invoke-static {p1}, Ljava/text/CollationElementIterator;->primaryOrder(I)I

    move-result p0

    invoke-static {p2}, Ljava/text/CollationElementIterator;->primaryOrder(I)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/text/CollationElementIterator;->secondaryOrder(I)S

    move-result p0

    invoke-static {p2}, Ljava/text/CollationElementIterator;->secondaryOrder(I)S

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    :cond_0
    return p0
.end method
