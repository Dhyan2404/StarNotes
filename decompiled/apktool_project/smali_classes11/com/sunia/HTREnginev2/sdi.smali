.class public final synthetic Lcom/sunia/HTREnginev2/sdi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/function/IOIntSupplier;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IOIntSupplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sdi;->a:Lonyx/org/apache/commons/io/function/IOIntSupplier;

    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sdi;->a:Lonyx/org/apache/commons/io/function/IOIntSupplier;

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/IOIntSupplier;->b(Lonyx/org/apache/commons/io/function/IOIntSupplier;)I

    move-result p0

    return p0
.end method
