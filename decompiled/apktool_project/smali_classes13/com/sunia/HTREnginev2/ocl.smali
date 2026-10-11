.class public final synthetic Lcom/sunia/HTREnginev2/ocl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/ss/usermodel/RangeCopier;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/usermodel/RangeCopier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ocl;->e:Lorg/apache/poi/ss/usermodel/RangeCopier;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ocl;->e:Lorg/apache/poi/ss/usermodel/RangeCopier;

    check-cast p1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/RangeCopier;->a(Lorg/apache/poi/ss/usermodel/RangeCopier;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    return-void
.end method
