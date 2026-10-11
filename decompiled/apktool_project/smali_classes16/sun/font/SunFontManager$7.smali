.class Lsun/font/SunFontManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/font/SunFontManager;->createFont2D(Ljava/io/File;IZZLsun/font/CreatedFontTracker;)[Lsun/font/Font2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/font/SunFontManager;

.field final synthetic val$_tracker:Lsun/font/CreatedFontTracker;

.field final synthetic val$fFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lsun/font/SunFontManager;Lsun/font/CreatedFontTracker;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lsun/font/SunFontManager$7;->this$0:Lsun/font/SunFontManager;

    iput-object p2, p0, Lsun/font/SunFontManager$7;->val$_tracker:Lsun/font/CreatedFontTracker;

    iput-object p3, p0, Lsun/font/SunFontManager$7;->val$fFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsun/font/SunFontManager$7;->run()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/lang/Void;
    .locals 3

    .line 2
    iget-object v0, p0, Lsun/font/SunFontManager$7;->val$_tracker:Lsun/font/CreatedFontTracker;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lsun/font/SunFontManager$7;->val$fFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lsun/font/CreatedFontTracker;->subBytes(I)V

    .line 4
    :cond_0
    iget-object p0, p0, Lsun/font/SunFontManager$7;->val$fFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    const/4 p0, 0x0

    return-object p0
.end method
