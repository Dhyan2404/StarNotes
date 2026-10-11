.class public Lcom/onegravity/rteditor/api/format/RTSpanned;
.super Lcom/onegravity/rteditor/api/format/RTText;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/text/Spanned;)V
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/api/format/RTFormat;->SPANNED:Lcom/onegravity/rteditor/api/format/RTFormat$Spanned;

    invoke-direct {p0, v0, p1}, Lcom/onegravity/rteditor/api/format/RTText;-><init>(Lcom/onegravity/rteditor/api/format/RTFormat;Ljava/lang/CharSequence;)V

    return-void
.end method
