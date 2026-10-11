.class public Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$b;
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
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$b;->a:Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$b;-><init>(Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;)V

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
