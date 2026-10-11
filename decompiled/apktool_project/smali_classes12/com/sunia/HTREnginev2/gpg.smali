.class public final synthetic Lcom/sunia/HTREnginev2/gpg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lorg/apache/poi/common/usermodel/fonts/FontCharset;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontCharset;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gpg;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/gpg;->f:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gpg;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gpg;->f:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    check-cast p1, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    invoke-static {v0, p0, p1}, Lorg/apache/poi/hslf/record/FontCollection;->c(Ljava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontCharset;Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;)Z

    move-result p0

    return p0
.end method
