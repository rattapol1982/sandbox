select
	pmu.username ,
	pms.system_name ,
	pmsr.role_id ,
	pmr.role_name ,
	pmsr.role_type ,
	pmrp.menu_permission_id
from
	pp_mst_user pmu,
	pp_mst_user_system_role pmusr,
	pp_mst_system_role pmsr,
	pp_mst_role pmr,
	pp_mst_role_permission pmrp,
	pp_mst_system pms
where
	pmu.is_deleted = 'false'
	and pmsr.is_deleted = 'false'
	and pmusr.is_deleted = 'false'
	and pmrp.is_deleted = 'false'
	and pmr.is_deleted = 'false'
	and pms.is_deleted = 'false'
	--and pmu.username like 'PavineeT'
	and pmu.user_id = pmusr.user_id
	and pmusr.system_role_id = pmsr.system_role_id
	and pmsr.role_id = pmrp.role_id
	and pmsr.role_id = pmr.role_id
	and pmsr.system_id = pms.system_id
order by
	username,
	system_name,
	role_id,
	menu_permission_id;

select
	*
from
	((
/* PSC */
	select
		mau.username ,
		'APP System' as module,
		mar.role_id ,
		mar.role_name ,
		mar.role_type ,
		marp.menu_permission_id
	from
		mst_app_user mau ,
		mst_app_user_role maur,
		mst_app_role mar ,
		mst_app_role_permission marp
	where
		mau.is_deleted = 'false'
		and maur.is_deleted = 'false'
		and mau.user_id = maur.user_id
		and mar.is_deleted = 'false'
		and maur.role_id = mar.role_id
		and marp.is_deleted = 'false'
		and mar.role_id = marp.role_id )
union (
/* REF */
select
	mrpu.username ,
	'Reference Price System' as module,
	mrpr.role_id ,
	mrpr.role_name ,
	mrpr.role_type ,
	mrprp.menu_permission_id
from
	mst_ref_price_user mrpu ,
	mst_ref_price_user_role mrpur ,
	mst_ref_price_role mrpr ,
	mst_ref_price_role_permission mrprp
where
	mrpu.is_deleted = 'false'
	and mrpur.is_deleted = 'false'
	and mrpu.user_id = mrpur.user_id
	and mrpr.is_deleted = 'false'
	and mrpur.role_id = mrpr.role_id
	and mrprp.is_deleted = 'false'
	and mrpr.role_id = mrprp.role_id)
union (
/* PA */
select
	pmu.username ,
	pms.system_name ,
	pmsr.role_id ,
	pmr.role_name ,
	pmsr.role_type ,
	pmrp.menu_permission_id
from
	pp_mst_user pmu,
	pp_mst_user_system_role pmusr,
	pp_mst_system_role pmsr,
	pp_mst_role pmr,
	pp_mst_role_permission pmrp,
	pp_mst_system pms
where
	pmu.is_deleted = 'false'
and pmsr.is_deleted = 'false'
and pmusr.is_deleted = 'false'
and pmrp.is_deleted = 'false'
and pmr.is_deleted = 'false'
and pms.is_deleted = 'false'
and pms.system_id in (3, 99)
--and pmu.username like 'PavineeT'
	and pmu.user_id = pmusr.user_id
	and pmusr.system_role_id = pmsr.system_role_id
	and pmsr.role_id = pmrp.role_id
	and pmsr.role_id = pmr.role_id
	and pmsr.system_id = pms.system_id)) xxx
	--where xxx.username like '%Phetphailin%'
order by
	username,
	module,
	role_id,
	role_name,
	menu_permission_id;


select
	pmu.username ,
	pms.system_name ,
	pmsr.role_id ,
	pmr.role_name ,
	pmsr.role_type ,
	pmrp.menu_permission_id
from
	pp_mst_user pmu,
	pp_mst_user_system_role pmusr,
	pp_mst_system_role pmsr,
	pp_mst_role pmr,
	pp_mst_role_permission pmrp,
	pp_mst_system pms
where
	pmu.is_deleted = 'false'
	and pmsr.is_deleted = 'false'
	and pmusr.is_deleted = 'false'
	and pmrp.is_deleted = 'false'
	and pmr.is_deleted = 'false'
	and pms.is_deleted = 'false'
	--and pmu.username like 'PavineeT'
	and pmu.user_id = pmusr.user_id
	and pmusr.system_role_id = pmsr.system_role_id
	and pmsr.role_id = pmrp.role_id
	and pmsr.role_id = pmr.role_id
	and pmsr.system_id = pms.system_id
order by
	username,
	system_name,
	role_id,
	menu_permission_id