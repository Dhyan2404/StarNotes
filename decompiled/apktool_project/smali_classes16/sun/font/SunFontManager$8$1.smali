.class Lsun/font/SunFontManager$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/font/SunFontManager$8;->run()V
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
.field final synthetic this$1:Lsun/font/SunFontManager$8;


# direct methods
.method public constructor <init>(Lsun/font/SunFontManager$8;)V
    .locals 0

    iput-object p1, p0, Lsun/font/SunFontManager$8$1;->this$1:Lsun/font/SunFontManager$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsun/font/SunFontManager$8$1;->run()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/lang/Void;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lsun/font/SunFontManager$8$1;->this$1:Lsun/font/SunFontManager$8;

    iget-object v2, v2, Lsun/font/SunFontManager$8;->this$0:Lsun/font/SunFontManager;

    iget-object v2, v2, Lsun/font/SunFontManager;->fontFileCache:[Lsun/font/FileFont;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v2}, Lsun/font/FileFont;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lsun/font/SunFontManager$8$1;->this$1:Lsun/font/SunFontManager$8;

    iget-object v1, v1, Lsun/font/SunFontManager$8;->this$0:Lsun/font/SunFontManager;

    iget-object v1, v1, Lsun/font/SunFontManager;->tmpFontFiles:Ljava/util/Vector;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    .line 6
    iget-object p0, p0, Lsun/font/SunFontManager$8$1;->this$1:Lsun/font/SunFontManager$8;

    iget-object p0, p0, Lsun/font/SunFontManager$8;->this$0:Lsun/font/SunFontManager;

    iget-object p0, p0, Lsun/font/SunFontManager;->tmpFontFiles:Ljava/util/Vector;

    invoke-virtual {p0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    .line 7
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 8
    :try_start_1
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
