.class public final synthetic Lcom/sunia/HTREnginev2/ihi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/poi/ss/usermodel/Sheet;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ihi;->e:Lorg/apache/poi/ss/usermodel/Sheet;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ihi;->e:Lorg/apache/poi/ss/usermodel/Sheet;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/ImageUtils;->b(Lorg/apache/poi/ss/usermodel/Sheet;Ljava/lang/Integer;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method
