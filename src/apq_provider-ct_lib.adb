

---------------
-- Ada Works --
---------------
with KOW_Config;

---------
-- APQ --
---------
with APQ_Provider;
with APQ.ct_lib.Client;


package body APQ_Provider.ct_lib is


	function Main_Factory is new APQ_Provider.Generic_Connection_Factory( Connection_Type => APQ.ct_lib.Client.Connection_Type );

	function Factory( C : in KOW_Config.Config_File ) return APQ.Connection_Ptr is
	begin
		return Main_Factory( C );
	end Factory;

begin

	APQ_Provider.Factory_Registry.Register_Factory( APQ.Engine_ct_lib, Factory'Access );
end APQ_Provider.ct_lib;
