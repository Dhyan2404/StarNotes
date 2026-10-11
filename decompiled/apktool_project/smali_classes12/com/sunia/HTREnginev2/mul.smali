.class public final synthetic Lcom/sunia/HTREnginev2/mul;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/poi/common/usermodel/fonts/FontGroup;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mul;->e:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mul;->e:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    check-cast p1, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;

    invoke-static {p0, p1}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->a(Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
