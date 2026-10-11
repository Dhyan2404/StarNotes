.class public abstract Lcom/onegravity/rteditor/api/format/RTFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/rteditor/api/format/RTFormat$Spanned;,
        Lcom/onegravity/rteditor/api/format/RTFormat$PlainText;,
        Lcom/onegravity/rteditor/api/format/RTFormat$Html;
    }
.end annotation


# static fields
.field public static final HTML:Lcom/onegravity/rteditor/api/format/RTFormat$Html;

.field public static final PLAIN_TEXT:Lcom/onegravity/rteditor/api/format/RTFormat$PlainText;

.field public static final SPANNED:Lcom/onegravity/rteditor/api/format/RTFormat$Spanned;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onegravity/rteditor/api/format/RTFormat$Spanned;

    invoke-direct {v0}, Lcom/onegravity/rteditor/api/format/RTFormat$Spanned;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/api/format/RTFormat;->SPANNED:Lcom/onegravity/rteditor/api/format/RTFormat$Spanned;

    new-instance v0, Lcom/onegravity/rteditor/api/format/RTFormat$PlainText;

    invoke-direct {v0}, Lcom/onegravity/rteditor/api/format/RTFormat$PlainText;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/api/format/RTFormat;->PLAIN_TEXT:Lcom/onegravity/rteditor/api/format/RTFormat$PlainText;

    new-instance v0, Lcom/onegravity/rteditor/api/format/RTFormat$Html;

    invoke-direct {v0}, Lcom/onegravity/rteditor/api/format/RTFormat$Html;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/api/format/RTFormat;->HTML:Lcom/onegravity/rteditor/api/format/RTFormat$Html;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
