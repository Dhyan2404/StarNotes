.class public final synthetic Lorg/apache/poi/hslf/usermodel/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hslf/usermodel/HSLFFill$1;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFFill$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/a;->e:Lorg/apache/poi/hslf/usermodel/HSLFFill$1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/a;->e:Lorg/apache/poi/hslf/usermodel/HSLFFill$1;

    check-cast p1, Ljava/awt/Color;

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFFill$1;->a(Lorg/apache/poi/hslf/usermodel/HSLFFill$1;Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p0

    return-object p0
.end method
