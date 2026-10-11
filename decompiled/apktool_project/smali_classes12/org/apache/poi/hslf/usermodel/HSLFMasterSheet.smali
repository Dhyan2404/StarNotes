.class public abstract Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;
.super Lorg/apache/poi/hslf/usermodel/HSLFSheet;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/MasterSheet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/hslf/usermodel/HSLFSheet;",
        "Lorg/apache/poi/sl/usermodel/MasterSheet<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/poi/hslf/record/SheetContainer;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;-><init>(Lorg/apache/poi/hslf/record/SheetContainer;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/sl/usermodel/SimpleShape;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    move-result-object p0

    return-object p0
.end method

.method public abstract getPropCollection(IILjava/lang/String;Z)Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;
.end method
