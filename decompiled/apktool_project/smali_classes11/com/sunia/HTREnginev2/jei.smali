.class public final synthetic Lcom/sunia/HTREnginev2/jei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic e:Lonyx/org/apache/commons/io/function/IOBiFunction;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IOBiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jei;->e:Lonyx/org/apache/commons/io/function/IOBiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jei;->e:Lonyx/org/apache/commons/io/function/IOBiFunction;

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/IOStream;->m(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
