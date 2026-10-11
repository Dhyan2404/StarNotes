.class public final Lcom/sunia/HTREnginev2/dkf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/dkf;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/dkf;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a([ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/dkf;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dkf;->b:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/dkf;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x13

    :try_start_1
    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "US/CA"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x1e

    const/16 v1, 0x27

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x3c

    const/16 v1, 0x8b

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "US/CA"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x12c

    const/16 v1, 0x17b

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "FR"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x17c

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "BG"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x17f

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "SI"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x181

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "HR"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x183

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "BA"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x190

    const/16 v1, 0x1b8

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "DE"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x1c2

    const/16 v1, 0x1cb

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "JP"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x1cc

    const/16 v1, 0x1d5

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "RU"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x1d7

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "TW"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x1da

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "EE"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x1db

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "LV"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x1dc

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "AZ"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x1dd

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "LT"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x1de

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "UZ"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x1df

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "LK"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x1e0

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "PH"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x1e1

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "BY"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x1e2

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "UA"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x1e4

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "MD"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x1e5

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "AM"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x1e6

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "GE"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x1e7

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "KZ"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x1e9

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "HK"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x1ea

    const/16 v1, 0x1f3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "JP"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x1f4

    const/16 v1, 0x1fd

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "GB"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x208

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "GR"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x210

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "LB"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x211

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "CY"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x213

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "MK"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x217

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "MT"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x21b

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "IE"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x21c

    const/16 v1, 0x225

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "BE/LU"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x230

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "PT"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x239

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "IS"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x23a

    const/16 v1, 0x243

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "DK"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x24e

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "PL"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x252

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "RO"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x257

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "HU"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x258

    const/16 v1, 0x259

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "ZA"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x25b

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "GH"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x260

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "BH"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x261

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "MU"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x263

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "MA"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x265

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "DZ"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x268

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "KE"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x26a

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "CI"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x26b

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "TN"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x26d

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "SY"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x26e

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "EG"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x270

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "LY"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x271

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "JO"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x272

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "IR"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x273

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "KW"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x274

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "SA"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x275

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "AE"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x280

    const/16 v1, 0x289

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "FI"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x2b2

    const/16 v1, 0x2b7

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x2bc

    const/16 v1, 0x2c5

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "NO"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x2d9

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "IL"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x2da

    const/16 v1, 0x2e3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "SE"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x2e4

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "GT"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x2e5

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "SV"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x2e6

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "HN"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x2e7

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "NI"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x2e8

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "CR"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x2e9

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "PA"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x2ea

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "DO"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x2ee

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "MX"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x2f2

    const/16 v1, 0x2f3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "CA"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x2f7

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "VE"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x2f8

    const/16 v1, 0x301

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "CH"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x302

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "CO"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x305

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "UY"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x307

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "PE"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x309

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "BO"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x30b

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "AR"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x30c

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "CL"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x310

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "PY"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x311

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "PE"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x312

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "EC"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x315

    const/16 v1, 0x316

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "BR"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x320

    const/16 v1, 0x347

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "IT"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x348

    const/16 v1, 0x351

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "ES"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x352

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "CU"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x35a

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "SK"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x35b

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "CZ"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x35c

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "YU"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x361

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "MN"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x363

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "KP"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x364

    const/16 v1, 0x365

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "TR"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x366

    const/16 v1, 0x36f

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "NL"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x370

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "KR"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x375

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "TH"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x378

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "SG"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x37a

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "IN"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x37d

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "VN"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x380

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "PK"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x383

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "ID"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x384

    const/16 v1, 0x397

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "AT"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x3a2

    const/16 v1, 0x3ab

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "AU"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x3ac

    const/16 v1, 0x3b5

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "AZ"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x3bb

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "MY"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V

    const/16 v0, 0x3be

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "MO"

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/dkf;->a([ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/dkf;->b()V

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/dkf;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/sunia/HTREnginev2/dkf;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v5, v4, v1

    if-ge p1, v5, :cond_0

    return-object v3

    :cond_0
    array-length v3, v4

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    goto :goto_1

    :cond_1
    aget v5, v4, v6

    :goto_1
    if-gt p1, v5, :cond_2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dkf;->b:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method
