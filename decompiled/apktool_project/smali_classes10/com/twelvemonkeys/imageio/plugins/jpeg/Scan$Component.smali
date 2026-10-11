.class public final Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Component"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;->a:I

    iput p2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;->b:I

    iput p3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;->c:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "scanCompSel: %d, acTabSel: %d, dcTabSel: %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
