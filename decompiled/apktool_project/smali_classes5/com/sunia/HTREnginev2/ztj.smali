.class public Lcom/sunia/HTREnginev2/ztj;
.super Ljavax/servlet/ServletOutputStream;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "javax.servlet.http.LocalStrings"

.field public static i:Ljava/util/ResourceBundle;


# instance fields
.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "javax.servlet.http.LocalStrings"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/ztj;->i:Ljava/util/ResourceBundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/servlet/ServletOutputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/ztj;->g:I

    return-void
.end method


# virtual methods
.method public f()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/ztj;->g:I

    return p0
.end method

.method public write(I)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/sunia/HTREnginev2/ztj;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sunia/HTREnginev2/ztj;->g:I

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p3, :cond_0

    .line 2
    iget p1, p0, Lcom/sunia/HTREnginev2/ztj;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/sunia/HTREnginev2/ztj;->g:I

    return-void

    .line 3
    :cond_0
    sget-object p0, Lcom/sunia/HTREnginev2/ztj;->i:Ljava/util/ResourceBundle;

    const-string p1, "err.io.negativelength"

    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "negative length"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
