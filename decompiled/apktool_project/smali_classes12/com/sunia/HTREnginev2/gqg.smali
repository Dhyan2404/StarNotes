.class public final synthetic Lcom/sunia/HTREnginev2/gqg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/common/usermodel/fonts/FontHeader;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gqg;->e:Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gqg;->e:Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->u(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
