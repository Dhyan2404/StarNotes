.class public final Lcom/sunia/HTREnginev2/hag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:[[Ljava/lang/Object;

.field public static final c:[[Ljava/lang/Object;

.field public static final d:[[Ljava/lang/Object;

.field public static final e:[[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 33

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/hag;->a:Ljava/lang/Object;

    const/16 v1, 0x18

    new-array v1, v1, [[Ljava/lang/Object;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "00"

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "01"

    filled-new-array {v7, v6}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v1, v8

    const-string v7, "02"

    filled-new-array {v7, v6}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v7, v1, v9

    const/16 v7, 0x14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "10"

    filled-new-array {v12, v0, v11}, [Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v12, v1, v13

    const/4 v12, 0x6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v13, "11"

    filled-new-array {v13, v15}, [Ljava/lang/Object;

    move-result-object v13

    const/16 v17, 0x4

    aput-object v13, v1, v17

    const-string v13, "12"

    filled-new-array {v13, v15}, [Ljava/lang/Object;

    move-result-object v13

    const/16 v18, 0x5

    aput-object v13, v1, v18

    const-string v13, "13"

    filled-new-array {v13, v15}, [Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v1, v12

    const-string v13, "15"

    filled-new-array {v13, v15}, [Ljava/lang/Object;

    move-result-object v13

    const/16 v19, 0x7

    aput-object v13, v1, v19

    const-string v13, "17"

    filled-new-array {v13, v15}, [Ljava/lang/Object;

    move-result-object v13

    const/16 v20, 0x8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v13, v1, v20

    const-string v13, "20"

    filled-new-array {v13, v10}, [Ljava/lang/Object;

    move-result-object v13

    const/16 v22, 0x9

    aput-object v13, v1, v22

    const-string v13, "21"

    filled-new-array {v13, v0, v11}, [Ljava/lang/Object;

    move-result-object v13

    const/16 v23, 0xa

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v13, v1, v23

    const/16 v13, 0x1d

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v8, "22"

    filled-new-array {v8, v0, v13}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v13, 0xb

    aput-object v8, v1, v13

    const-string v8, "30"

    filled-new-array {v8, v0, v12}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v26, 0xc

    aput-object v8, v1, v26

    const-string v8, "37"

    filled-new-array {v8, v0, v12}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v12, 0xd

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v8, v1, v12

    const/16 v8, 0x1e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v8, "90"

    filled-new-array {v8, v0, v12}, [Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v1, v4

    const-string v8, "91"

    filled-new-array {v8, v0, v12}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v27, 0xf

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v8, v1, v27

    const-string v8, "92"

    filled-new-array {v8, v0, v12}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v28, 0x10

    aput-object v8, v1, v28

    const-string v8, "93"

    filled-new-array {v8, v0, v12}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v29, 0x11

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v8, v1, v29

    const-string v8, "94"

    filled-new-array {v8, v0, v12}, [Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v1, v2

    const-string v8, "95"

    filled-new-array {v8, v0, v12}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v31, 0x13

    aput-object v8, v1, v31

    const-string v8, "96"

    filled-new-array {v8, v0, v12}, [Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v1, v7

    const-string v8, "97"

    filled-new-array {v8, v0, v12}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v32, 0x15

    aput-object v8, v1, v32

    const-string v8, "98"

    filled-new-array {v8, v0, v12}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v32, 0x16

    aput-object v8, v1, v32

    const-string v8, "99"

    filled-new-array {v8, v0, v12}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v32, 0x17

    aput-object v8, v1, v32

    sput-object v1, Lcom/sunia/HTREnginev2/hag;->b:[[Ljava/lang/Object;

    const/16 v1, 0x17

    new-array v1, v1, [[Ljava/lang/Object;

    const-string v8, "240"

    filled-new-array {v8, v0, v12}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v30, 0x0

    aput-object v8, v1, v30

    const-string v8, "241"

    filled-new-array {v8, v0, v12}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v25, 0x1

    aput-object v8, v1, v25

    const-string v8, "242"

    filled-new-array {v8, v0, v15}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v24, 0x2

    aput-object v8, v1, v24

    const-string v8, "250"

    filled-new-array {v8, v0, v12}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v16, 0x3

    aput-object v8, v1, v16

    const-string v8, "251"

    filled-new-array {v8, v0, v12}, [Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v1, v17

    const-string v8, "253"

    filled-new-array {v8, v0, v5}, [Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v1, v18

    const-string v8, "254"

    filled-new-array {v8, v0, v11}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v21, 0x6

    aput-object v8, v1, v21

    const-string v8, "400"

    filled-new-array {v8, v0, v12}, [Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v1, v19

    const-string v8, "401"

    filled-new-array {v8, v0, v12}, [Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v1, v20

    const-string v8, "402"

    filled-new-array {v8, v5}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v22

    const-string v5, "403"

    filled-new-array {v5, v0, v12}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v23

    const-string v5, "410"

    filled-new-array {v5, v13}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v8, 0xb

    aput-object v5, v1, v8

    const-string v5, "411"

    filled-new-array {v5, v13}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v26

    const-string v5, "412"

    filled-new-array {v5, v13}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v8, 0xd

    aput-object v5, v1, v8

    const-string v5, "413"

    filled-new-array {v5, v13}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v8, 0xe

    aput-object v5, v1, v8

    const-string v5, "414"

    filled-new-array {v5, v13}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v27

    const-string v5, "420"

    filled-new-array {v5, v0, v11}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v28

    const-string v5, "421"

    filled-new-array {v5, v0, v4}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v29

    const-string v5, "422"

    filled-new-array {v5, v14}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v2

    const-string v5, "423"

    filled-new-array {v5, v0, v4}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v31

    const-string v5, "424"

    filled-new-array {v5, v14}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v7

    const-string v5, "425"

    filled-new-array {v5, v14}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v8, 0x15

    aput-object v5, v1, v8

    const-string v5, "426"

    filled-new-array {v5, v14}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v8, 0x16

    aput-object v5, v1, v8

    sput-object v1, Lcom/sunia/HTREnginev2/hag;->c:[[Ljava/lang/Object;

    const/16 v1, 0x39

    new-array v1, v1, [[Ljava/lang/Object;

    const-string v5, "310"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v1, v8

    const-string v5, "311"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v1, v8

    const-string v5, "312"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v1, v8

    const-string v5, "313"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v1, v8

    const-string v5, "314"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v17

    const-string v5, "315"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v18

    const-string v5, "316"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v8, 0x6

    aput-object v5, v1, v8

    const-string v5, "320"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v19

    const-string v5, "321"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v20

    const-string v5, "322"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v22

    const-string v5, "323"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v23

    const-string v5, "324"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v8, 0xb

    aput-object v5, v1, v8

    const-string v5, "325"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v26

    const-string v5, "326"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v8, 0xd

    aput-object v5, v1, v8

    const-string v5, "327"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v8, 0xe

    aput-object v5, v1, v8

    const-string v5, "328"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v27

    const-string v5, "329"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v28

    const-string v5, "330"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v29

    const-string v5, "331"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v2

    const-string v5, "332"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v31

    const-string v5, "333"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v7

    const-string v5, "334"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x15

    aput-object v5, v1, v7

    const-string v5, "335"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x16

    aput-object v5, v1, v7

    const-string v5, "336"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x17

    aput-object v5, v1, v7

    const-string v5, "340"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x18

    aput-object v5, v1, v7

    const-string v5, "341"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x19

    aput-object v5, v1, v7

    const-string v5, "342"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x1a

    aput-object v5, v1, v7

    const-string v5, "343"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x1b

    aput-object v5, v1, v7

    const-string v5, "344"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x1c

    aput-object v5, v1, v7

    const-string v5, "345"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x1d

    aput-object v5, v1, v7

    const-string v5, "346"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x1e

    aput-object v5, v1, v7

    const-string v5, "347"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x1f

    aput-object v5, v1, v7

    const-string v5, "348"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x20

    aput-object v5, v1, v7

    const-string v5, "349"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x21

    aput-object v5, v1, v7

    const-string v5, "350"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x22

    aput-object v5, v1, v7

    const-string v5, "351"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x23

    aput-object v5, v1, v7

    const-string v5, "352"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x24

    aput-object v5, v1, v7

    const-string v5, "353"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x25

    aput-object v5, v1, v7

    const-string v5, "354"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x26

    aput-object v5, v1, v7

    const-string v5, "355"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x27

    aput-object v5, v1, v7

    const-string v5, "356"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x28

    aput-object v5, v1, v7

    const-string v5, "357"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x29

    aput-object v5, v1, v7

    const-string v5, "360"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x2a

    aput-object v5, v1, v7

    const-string v5, "361"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x2b

    aput-object v5, v1, v7

    const-string v5, "362"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x2c

    aput-object v5, v1, v7

    const-string v5, "363"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x2d

    aput-object v5, v1, v7

    const-string v5, "364"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x2e

    aput-object v5, v1, v7

    const-string v5, "365"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x2f

    aput-object v5, v1, v7

    const-string v5, "366"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x30

    aput-object v5, v1, v7

    const-string v5, "367"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x31

    aput-object v5, v1, v7

    const-string v5, "368"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x32

    aput-object v5, v1, v7

    const-string v5, "369"

    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x33

    aput-object v5, v1, v7

    const-string v5, "390"

    filled-new-array {v5, v0, v4}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x34

    aput-object v5, v1, v7

    const-string v5, "391"

    filled-new-array {v5, v0, v3}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x35

    aput-object v5, v1, v7

    const-string v5, "392"

    filled-new-array {v5, v0, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x36

    aput-object v4, v1, v5

    const-string v4, "393"

    filled-new-array {v4, v0, v3}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x37

    aput-object v4, v1, v5

    const-string v4, "703"

    filled-new-array {v4, v0, v12}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x38

    aput-object v4, v1, v5

    sput-object v1, Lcom/sunia/HTREnginev2/hag;->d:[[Ljava/lang/Object;

    new-array v1, v2, [[Ljava/lang/Object;

    const-string v2, "7001"

    filled-new-array {v2, v13}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-string v2, "7002"

    filled-new-array {v2, v0, v12}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "7003"

    filled-new-array {v2, v9}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "8001"

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const-string v2, "8002"

    filled-new-array {v2, v0, v11}, [Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v17

    const-string v2, "8003"

    filled-new-array {v2, v0, v12}, [Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v18

    const-string v2, "8004"

    filled-new-array {v2, v0, v12}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v1, v4

    const-string v2, "8005"

    filled-new-array {v2, v15}, [Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v19

    const-string v2, "8006"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v20

    const-string v2, "8007"

    filled-new-array {v2, v0, v12}, [Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v22

    const-string v2, "8008"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v0, v4}, [Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v23

    const-string v2, "8018"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "8020"

    filled-new-array {v3, v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v26

    const-string v2, "8100"

    filled-new-array {v2, v15}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string v2, "8101"

    filled-new-array {v2, v9}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string v2, "8102"

    filled-new-array {v2, v10}, [Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v27

    const/16 v2, 0x46

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "8110"

    filled-new-array {v3, v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v28

    const/16 v2, 0x46

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "8200"

    filled-new-array {v3, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v29

    sput-object v1, Lcom/sunia/HTREnginev2/hag;->e:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sunia/HTREnginev2/hag;->b:[[Ljava/lang/Object;

    array-length v4, v3

    move v5, v0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_3

    aget-object v7, v3, v5

    aget-object v8, v7, v0

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    aget-object v0, v7, v6

    sget-object v2, Lcom/sunia/HTREnginev2/hag;->a:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    aget-object v0, v7, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, p0}, Lcom/sunia/HTREnginev2/hag;->c(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, p0}, Lcom/sunia/HTREnginev2/hag;->b(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_e

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/sunia/HTREnginev2/hag;->c:[[Ljava/lang/Object;

    array-length v5, v4

    move v7, v0

    :goto_1
    if-ge v7, v5, :cond_6

    aget-object v8, v4, v7

    aget-object v9, v8, v0

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    aget-object v0, v8, v6

    sget-object v2, Lcom/sunia/HTREnginev2/hag;->a:Ljava/lang/Object;

    if-ne v0, v2, :cond_4

    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0, p0}, Lcom/sunia/HTREnginev2/hag;->c(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0, p0}, Lcom/sunia/HTREnginev2/hag;->b(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    sget-object v3, Lcom/sunia/HTREnginev2/hag;->d:[[Ljava/lang/Object;

    array-length v4, v3

    move v5, v0

    :goto_2
    const/4 v7, 0x4

    if-ge v5, v4, :cond_9

    aget-object v8, v3, v5

    aget-object v9, v8, v0

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    aget-object v0, v8, v6

    sget-object v2, Lcom/sunia/HTREnginev2/hag;->a:Ljava/lang/Object;

    if-ne v0, v2, :cond_7

    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/sunia/HTREnginev2/hag;->c(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/sunia/HTREnginev2/hag;->b(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v7, :cond_d

    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sunia/HTREnginev2/hag;->e:[[Ljava/lang/Object;

    array-length v4, v3

    move v5, v0

    :goto_3
    if-ge v5, v4, :cond_c

    aget-object v8, v3, v5

    aget-object v9, v8, v0

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    aget-object v0, v8, v6

    sget-object v2, Lcom/sunia/HTREnginev2/hag;->a:Ljava/lang/Object;

    if-ne v0, v2, :cond_a

    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/sunia/HTREnginev2/hag;->c(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/sunia/HTREnginev2/hag;->b(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method public static b(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p1, p0

    if-lt v1, p1, :cond_1

    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/sunia/HTREnginev2/hag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method public static c(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p1, p0

    if-ge v1, p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    :cond_0
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/sunia/HTREnginev2/hag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
