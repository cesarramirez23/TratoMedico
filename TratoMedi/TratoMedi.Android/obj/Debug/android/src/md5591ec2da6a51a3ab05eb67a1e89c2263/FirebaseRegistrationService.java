package md5591ec2da6a51a3ab05eb67a1e89c2263;


public class FirebaseRegistrationService
	extends com.google.firebase.iid.FirebaseInstanceIdService
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onTokenRefresh:()V:GetOnTokenRefreshHandler\n" +
			"";
		mono.android.Runtime.register ("TratoMedi.Droid.FirebaseRegistrationService, TratoMedi.Android", FirebaseRegistrationService.class, __md_methods);
	}


	public FirebaseRegistrationService ()
	{
		super ();
		if (getClass () == FirebaseRegistrationService.class)
			mono.android.TypeManager.Activate ("TratoMedi.Droid.FirebaseRegistrationService, TratoMedi.Android", "", this, new java.lang.Object[] {  });
	}


	public void onTokenRefresh ()
	{
		n_onTokenRefresh ();
	}

	private native void n_onTokenRefresh ();

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
