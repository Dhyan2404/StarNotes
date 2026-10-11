.class public final synthetic Lcom/sunia/HTREnginev2/phg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/FileSystem;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/FileSystem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/phg;->a:Lonyx/org/apache/commons/io/FileSystem;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/phg;->a:Lonyx/org/apache/commons/io/FileSystem;

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/FileSystem;->b(Lonyx/org/apache/commons/io/FileSystem;I)Z

    move-result p0

    return p0
.end method
