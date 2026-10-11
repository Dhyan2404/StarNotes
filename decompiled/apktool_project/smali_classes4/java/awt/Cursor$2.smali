.class final Ljava/awt/Cursor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/awt/Cursor;->getSystemCustomCursor(Ljava/lang/String;)Ljava/awt/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/awt/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$flocalized:Ljava/lang/String;

.field final synthetic val$fx:I

.field final synthetic val$fy:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/awt/Cursor$2;->val$fileName:Ljava/lang/String;

    iput p2, p0, Ljava/awt/Cursor$2;->val$fx:I

    iput p3, p0, Ljava/awt/Cursor$2;->val$fy:I

    iput-object p4, p0, Ljava/awt/Cursor$2;->val$flocalized:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/awt/Cursor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-static {}, Ljava/awt/Cursor;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/awt/Cursor$2;->val$fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/awt/Toolkit;->getImage(Ljava/lang/String;)Ljava/awt/Image;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/awt/Point;

    iget v3, p0, Ljava/awt/Cursor$2;->val$fx:I

    iget v4, p0, Ljava/awt/Cursor$2;->val$fy:I

    invoke-direct {v2, v3, v4}, Ljava/awt/Point;-><init>(II)V

    iget-object p0, p0, Ljava/awt/Cursor$2;->val$flocalized:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Ljava/awt/Toolkit;->createCustomCursor(Ljava/awt/Image;Ljava/awt/Point;Ljava/lang/String;)Ljava/awt/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/awt/Cursor$2;->run()Ljava/awt/Cursor;

    move-result-object p0

    return-object p0
.end method
