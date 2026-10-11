.class public Lcom/onegravity/rteditor/api/format/RTFormat$Html;
.super Lcom/onegravity/rteditor/api/format/RTFormat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onegravity/rteditor/api/format/RTFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Html"
.end annotation


# instance fields
.field public removeTrailingWhiteSpace:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onegravity/rteditor/api/format/RTFormat;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onegravity/rteditor/api/format/RTFormat$Html;->removeTrailingWhiteSpace:Z

    return-void
.end method
