.class public final synthetic Lcom/sunia/HTREnginev2/j3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/j3;->e:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/j3;->e:I

    check-cast p1, Lorg/apache/poi/ddf/EscherProperty;

    invoke-static {p0, p1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->d(ILorg/apache/poi/ddf/EscherProperty;)Z

    move-result p0

    return p0
.end method
